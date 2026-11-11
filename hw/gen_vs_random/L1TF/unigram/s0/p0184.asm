.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 96
neg rbx
xor cl, al
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
or rcx, -10
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
imul dx, si, 46
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], ebx
or dil, dl
not sil
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 25
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
lea rbx, qword ptr [rsi + rax]
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
sbb al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
