.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
setle dl
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 0
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
add bl, 76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
sub ax, 19828
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
sub dx, 30
lea rbx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -104
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
xchg dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
