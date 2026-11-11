.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
adc cl, -66
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
add dil, al
add dl, -8
cmp al, -44
and al, 100
test edi, -2098143765
test dl, 24
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
cmp al, dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
