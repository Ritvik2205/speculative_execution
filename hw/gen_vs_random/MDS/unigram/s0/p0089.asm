.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ecx, 50
and al, -105 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 3
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 74
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ecx
bts di, cx
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 62
xor sil, cl
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 79
or rdi, rax
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
cmovs rbx, rdi
bt bx, ax
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
and dl, -18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rcx]
bt dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
