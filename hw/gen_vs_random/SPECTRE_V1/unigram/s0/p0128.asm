.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rbx, -11
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], di
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
inc eax
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
sub rcx, rdx
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rcx, rbx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
test al, -75
btr rsi, rbx
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
