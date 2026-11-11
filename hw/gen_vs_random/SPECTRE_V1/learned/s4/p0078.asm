.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 73 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
lea edi, qword ptr [rax + rdi]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 83
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
btr rsi, 56
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
imul rsi, rcx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
lea di, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
