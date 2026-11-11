.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
cmovno esi, edi
bt bx, 27
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 4
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
adc al, bl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
setno bl
setno cl
imul dil
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
adc dil, 13
test ebx, 57
setnz al
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
