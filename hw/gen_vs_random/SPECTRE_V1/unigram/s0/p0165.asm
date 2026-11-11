.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -119
or di, bx
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 71
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], bx
setns cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and al, al
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
bt edi, 73
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 84
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
add al, 51 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
