.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -93 # instrumentation
xchg rbx, rax
lea rsi, qword ptr [rdx + rcx]
lea rax, qword ptr [rax + rdx]
setb sil
jmp .bb_0.1
.bb_0.1:
bt edx, 77
cmp al, al
jmp .bb_0.2
.bb_0.2:
cmp rdi, rbx
dec dl
jmp .bb_0.3
.bb_0.3:
and al, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
xor eax, -117
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
