.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rcx]
and dl, 8 # instrumentation
cmovle ax, bx
and cl, -8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
test al, 91
and dl, 125 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rdi]
or ax, si
bt rsi, rbx
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
bt rax, rbx
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
btc ecx, eax
xor cx, -18
and dl, 1 # instrumentation
cmovl cx, ax
and al, 21 # instrumentation
cmovb si, ax
and rax, rax
xor bl, -27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
