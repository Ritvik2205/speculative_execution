.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rcx
cmovb ecx, edi
xor cl, -79
not si
test cl, al
or bl, 84
xor sil, bl
or bl, -98
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
or bl, 84
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rbx], si
or cl, dil
and si, ax
mov bl, bl
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rax]
or cl, al
cmovns edx, edi
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
bts rax, 149
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
