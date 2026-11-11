.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 70
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rsi
and rdx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rsi
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
add dl, -70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], -25
cmovbe cx, dx
movzx ax, dl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -380598914
xor dl, al
sub al, al
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
