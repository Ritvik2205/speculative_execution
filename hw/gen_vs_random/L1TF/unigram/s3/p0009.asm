.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add bl, 4 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], ax
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
xor bl, bl
sbb rcx, 77
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
lea ebx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rcx
or di, 0b1000000000000000 # instrumentation
bsf si, di
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
lea ecx, qword ptr [rax + rcx + 48]
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ebx
add cl, -36
and rdx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rdx]
cmovo rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
