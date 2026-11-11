.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnbe sil
lea edi, qword ptr [rax + rax + 42]
cmovle edi, edx
and rcx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rcx]
add dl, 109 # instrumentation
cmovnb rdx, rsi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
sub edi, eax
btr rbx, rdx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
and rsi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rsi]
add bl, 28 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdi
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 31
and rdi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdi]
cmovnbe rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
