.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -97 # instrumentation
sets sil
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 74
add cl, 112 # instrumentation
sbb ebx, 31
adc dil, dl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 55
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea edi, qword ptr [rax]
setnle al
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add al, -94 # instrumentation
cmovnle rdi, rdx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
add dl, bl
and rdi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
setnz cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
