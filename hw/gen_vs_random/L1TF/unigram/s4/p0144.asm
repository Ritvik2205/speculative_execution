.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdi]
or dl, dl
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rbx
add cl, 42 # instrumentation
lea eax, qword ptr [rcx + rax]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -106
mov cl, 9
add si, -5
lea rbx, qword ptr [rcx + rbx + 4]
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rsi], dx
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
mov dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
