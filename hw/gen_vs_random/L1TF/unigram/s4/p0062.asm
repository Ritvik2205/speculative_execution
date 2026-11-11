.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
xor cl, 31
or rbx, 36
lea rax, qword ptr [rdx + rbx]
adc bl, 61
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
adc sil, 12
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -104
jmp .bb_0.1
.bb_0.1:
add cx, si
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
add dl, -76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
lea di, qword ptr [rcx]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], si
add dl, -48 # instrumentation
lea eax, qword ptr [rax + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
