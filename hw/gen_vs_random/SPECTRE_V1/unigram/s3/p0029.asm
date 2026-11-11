.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
bswap rdi
setnbe dl
imul rbx
and rsi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], cl
lea rcx, qword ptr [rax + rdx]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -6
add di, 44
lea esi, qword ptr [rbx + rbx + 13]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
setnl al
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
setnle dl
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
