.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp di, 68
test bl, -8
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
not di
and sil, al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and si, 80
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 82
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edx
and cl, cl
not ecx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
sbb sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
