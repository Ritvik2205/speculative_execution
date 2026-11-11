.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
cmp edx, 99
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
setz bl
add al, 74
lea si, qword ptr [rdx + rcx + 85]
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], esi
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
sub sil, -99
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
