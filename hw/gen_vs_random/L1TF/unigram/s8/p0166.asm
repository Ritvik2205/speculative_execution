.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setno al
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
or sil, al
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
or edx, ecx
and rsi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 227030929
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rsi], ax
btr cx, si
add cl, -33 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 91
or rbx, 18
lea rax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
