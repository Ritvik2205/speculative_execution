.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdx], eax
btr ecx, edx
and sil, bl
xor rcx, 71
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and al, dl
xor al, -4
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
btr bx, ax
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and eax, 366961170
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and sil, dil
xor di, -83
or al, dil
or dil, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
