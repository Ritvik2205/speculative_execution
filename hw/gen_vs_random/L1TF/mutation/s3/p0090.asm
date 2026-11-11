.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr bx, 104
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
lea ebx, qword ptr [rdi + rbx + 24078]
or dl, bl
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
neg dl
jmp .bb_0.1
.bb_0.1:
test rax, 404297506
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
sub rax, 57846954
test edx, -541774418
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and al, -68
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
