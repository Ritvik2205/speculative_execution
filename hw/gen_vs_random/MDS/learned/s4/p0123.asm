.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -4410
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and al, dil
or al, 16
and esi, 40
xor al, 115
and al, al
xor cl, dl
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 24
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
