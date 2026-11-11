.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sets al
cmp dx, si
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
btc ebx, ebx
lea rdi, qword ptr [rbx + rdi]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
add cl, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 64 # instrumentation
cmovnz dx, bx
add bl, -92 # instrumentation
cmovs di, cx
cmovb dx, si
setbe bl
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -13
neg cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
