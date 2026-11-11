.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul dx
lea rdx, qword ptr [rsi + rsi + 41]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
lea cx, qword ptr [rax + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
btr ecx, 93
mov sil, al
add al, 19 # instrumentation
setnz cl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rax
sets dl
add bl, 70
and rsi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
