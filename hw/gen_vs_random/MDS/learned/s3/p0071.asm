.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 99
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 2
xor dil, 8
xor al, 9
test eax, -1634766116
btr rax, 29
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
or al, 25
and al, -8
test ecx, -1843375753
or dl, dl
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and al, sil
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
