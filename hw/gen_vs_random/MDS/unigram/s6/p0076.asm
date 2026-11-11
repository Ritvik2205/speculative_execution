.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rax, rcx
and rbx, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and dl, 91 # instrumentation
cmovnle esi, esi
cmovns rdx, rcx
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
or dx, dx
xor dl, -43
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], esi
jmp .bb_0.1
.bb_0.1:
cmovo ebx, esi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], bx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 59
or sil, dil
bt eax, 117
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
bts si, di
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 8
cmovnp rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
