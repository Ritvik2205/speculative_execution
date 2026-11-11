.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and edx, -44
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
xor bl, 67
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
xor bl, dil
xor sil, al
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
test al, -81
cmovnp rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
