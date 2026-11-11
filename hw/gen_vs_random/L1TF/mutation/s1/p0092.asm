.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
add bl, 76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
setnl sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 0
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rcx
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
setle dl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and al, dl
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx], 127
xchg dil, sil
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
nop
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
