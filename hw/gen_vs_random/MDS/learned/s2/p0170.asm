.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 30884
cmovbe rcx, rsi
btr di, 199
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 7
bt ax, 171
test dil, -72
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 31
xor bx, cx
add dx, 47
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edx
and al, 4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 99
cmovb rdx, rax
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rdx
and bl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
cmovnp eax, ebx
and bl, dl
test rax, 1732677821
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
