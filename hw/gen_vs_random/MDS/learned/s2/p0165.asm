.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
bts rbx, rsi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
xor al, dl
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
xor cl, -13
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
test esi, 425331143
xor cl, al
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
