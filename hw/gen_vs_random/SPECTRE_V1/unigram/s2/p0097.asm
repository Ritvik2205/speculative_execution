.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx ebx, dil
and rdx, rdx
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], edx
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rdi
neg rcx
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], 46
adc si, 6
and bl, al
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
not di
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb ax, 82
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], dx
and esi, 77
and rcx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
