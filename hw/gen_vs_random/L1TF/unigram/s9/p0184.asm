.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ecx, 87
and rcx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rcx]
dec dx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
cmovl rsi, rax
add dil, 100 # instrumentation
lea cx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
add rbx, 99
imul edi, ebx
add cl, 55 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
setns dl
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdi
add cl, cl
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
