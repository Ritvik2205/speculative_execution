.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 96
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test al, -70
bts rax, 68
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 30
test al, -32
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
test ecx, esi
add al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
