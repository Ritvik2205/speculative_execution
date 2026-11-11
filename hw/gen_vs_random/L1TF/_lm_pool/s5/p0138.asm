.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
xor dil, -42
xor al, bl
or sil, dil
or sil, dil
setnb al
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
lea rbx, qword ptr [rax + rbx + 67]
bts di, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
