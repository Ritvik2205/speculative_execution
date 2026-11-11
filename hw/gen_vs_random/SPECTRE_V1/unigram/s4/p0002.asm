.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -72
cmp al, 13
cbw
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 32
add al, -117 # instrumentation
not rbx
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
setbe sil
cmp dl, 71
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
add bl, -76 # instrumentation
cmovnle dx, bx
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
