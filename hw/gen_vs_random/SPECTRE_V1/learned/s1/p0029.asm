.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
test ecx, -1134698714
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
cmovnbe rbx, rsi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -34
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
lea dx, qword ptr [rsi + rbx + 60147]
xor rbx, rsi
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rax], dx
cmp rax, 80
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rax
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], cx
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
lea esi, qword ptr [rdi]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax
xor al, -41
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 54
and rdi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
