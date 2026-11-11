.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
xor edx, 17
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and bl, -48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
test dil, dil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
or dl, dl
test dl, 48
bts rsi, rbx
jmp .bb_0.1
.bb_0.1:
or al, bl
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -80
bt ebx, 42
cmovnz cx, si
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
test dl, dl
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
