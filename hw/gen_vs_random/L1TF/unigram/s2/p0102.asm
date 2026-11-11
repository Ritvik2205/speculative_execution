.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
movzx si, cl
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -33
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 66
add al, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
jmp .bb_0.1
.bb_0.1:
add esi, edx
add bl, 59 # instrumentation
cmovns ecx, ebx
xor bl, bl
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
lea rdi, qword ptr [rdx + rsi]
lea ecx, qword ptr [rbx + rsi + 54]
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
