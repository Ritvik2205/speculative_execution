.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rbx, rsi
add cl, -98 # instrumentation
setp cl
bt rcx, 38
setnbe al
mul ebx
setb sil
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
movsx ebx, dil
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 10
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 21
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
inc di
and al, cl
add cl, -34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 34
adc sil, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
