.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
cmovle cx, cx
and rax, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rax]
add cl, -110 # instrumentation
setbe bl
add dl, -104 # instrumentation
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
add dl, 89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rsi]
cmp al, 27
and rdi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
or al, dl
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
