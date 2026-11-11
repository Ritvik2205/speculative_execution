.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl ax, bx
test cl, dl
and al, -24 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
cmovo rdx, rdi
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
test cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
test rdi, 72
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 39
jmp .bb_0.1
.bb_0.1:
or si, -12
xor di, 93
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 96
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and dl, 116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
test sil, 17
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 67
cmovno cx, bx
test rax, -1579405415
btr bx, 100
test ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
