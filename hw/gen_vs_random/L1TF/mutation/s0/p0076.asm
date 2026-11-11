.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdx], dx
cmp ebx, ebx
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edi
movsx eax, cl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 44
setb al
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], -63
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rbx]
xchg rdx, rax
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -32
or edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
