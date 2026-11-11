.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rsi, bl
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
mov dl, dl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 52
and rdx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 22
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add cl, 88
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
and dl, -49
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 68
add al, 42 # instrumentation
lea esi, qword ptr [rax + rsi]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
