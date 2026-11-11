.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
xor rdi, -80
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
add al, al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
btc edi, 34
and al, al
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
or al, -2
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
