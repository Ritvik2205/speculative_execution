.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
test si, ax
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rbx]
sets sil
jmp .bb_0.1
.bb_0.1:
cmovo di, cx
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
cmovle rsi, rcx
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
