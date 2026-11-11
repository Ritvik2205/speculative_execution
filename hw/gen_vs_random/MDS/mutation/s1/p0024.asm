.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 22
xor ax, 24729
xor rbx, -51
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
btc rbx, rdx
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
xor ax, 24729
cmovl rdx, rbx
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 0
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
cmovnl esi, edi
bts rsi, 89
and bl, 52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
btc rdx, 138
and al, -115 # instrumentation
cmovl bx, ax
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
cmovbe ax, bx
cmovnle eax, edx
and al, bl
or cl, al
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
bt edx, eax
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
btr eax, ecx
and dl, -33 # instrumentation
cmovns rdi, rdi
bts edi, ecx
and bl, -26 # instrumentation
cmovnp rax, rbx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
cmovnp rbx, rax
test ecx, 1044879383
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
xor cl, -79
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
and ax, 15401
not dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
