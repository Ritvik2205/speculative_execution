.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add edx, 56
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
or cl, dl
mov bl, 35
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
mov bl, 35
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
sub di, dx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
mov al, al
add al, 121 # instrumentation
setnb dl
add al, -65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
setle sil
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
and rbx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
