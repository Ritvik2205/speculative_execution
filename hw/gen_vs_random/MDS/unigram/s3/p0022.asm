.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp esi, edi
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rcx
bts rax, rbx
and dx, 60
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], -15
and rcx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 93
bt eax, ebx
cmovs eax, ebx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and dl, 18 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
test rcx, -613256812
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
bts rbx, rcx
cmovle ax, dx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
cmovs eax, ecx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
