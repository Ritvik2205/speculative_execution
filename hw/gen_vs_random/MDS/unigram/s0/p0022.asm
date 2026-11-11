.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -26 # instrumentation
cmovnp rbx, rdx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 10
xor cx, 97
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
test ebx, 245771113
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 9
and bl, -72 # instrumentation
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 8
and al, -56 # instrumentation
cmovl rsi, rbx
btr rsi, 73
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and dl, -7
jmp .bb_0.1
.bb_0.1:
btr ecx, esi
or dx, 28
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
xor al, 77
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rcx
bts si, di
and rax, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rax]
bt eax, esi
and rdi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
