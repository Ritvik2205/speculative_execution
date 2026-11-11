.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg rdx
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rbx]
setb bl
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
add al, sil
sbb al, sil
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
sbb cx, di
not cl
cmovl rax, rax
test edx, 1891691791
and rbx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
