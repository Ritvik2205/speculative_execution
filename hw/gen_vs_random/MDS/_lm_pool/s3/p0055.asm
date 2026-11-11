.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
xor sil, 27
and dil, dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
jmp .bb_0.1
.bb_0.1:
or esi, eax
or cl, dil
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
test dl, bl
xor cl, al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
or al, -17
and dx, 3
or al, 54
and al, sil
or al, 37
cmovbe si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
