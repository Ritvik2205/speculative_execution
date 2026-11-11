.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx edx, bx
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
imul ebx, ebx, 119
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 68
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
cmovs si, dx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and si, 57
and dx, cx
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 58
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], sil
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
add al, -76 # instrumentation
cmovnbe di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
