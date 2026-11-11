.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
cmovnz rsi, rcx
lea di, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], edx
inc sil
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
add dl, 47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rdi
jmp .bb_0.1
.bb_0.1:
imul rdx, rbx
add dl, cl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 65
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
