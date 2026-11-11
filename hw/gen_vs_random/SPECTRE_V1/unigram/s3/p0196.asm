.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -73 # instrumentation
setnbe dl
add bl, 45 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
test dil, -107
setno al
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], cx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
and al, -119
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
movsx di, dl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cmovl di, bx
cmovle rdi, rbx
test al, dl
dec rcx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
or si, 0b1000000000000000 # instrumentation
bsf di, si
dec rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
