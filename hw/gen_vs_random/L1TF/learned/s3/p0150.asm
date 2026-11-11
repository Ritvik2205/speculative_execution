.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -93 # instrumentation
xchg rbx, rax
lea rsi, qword ptr [rdx + rcx]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
xchg edx, ecx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
jmp .bb_0.2
.bb_0.2:
cmp rdi, rsi
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
mov ax, dx
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
