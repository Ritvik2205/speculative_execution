.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, 52
setnb al
add sil, al
neg edx
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
adc ax, -614
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi], 97
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 5
sbb al, 49
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 60
add cx, dx
add cl, 32 # instrumentation
cmovnbe rdx, rax
add bl, -95
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], esi
sbb ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
