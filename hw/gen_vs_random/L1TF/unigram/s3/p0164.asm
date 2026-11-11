.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 8
add si, ax
xchg edi, ebx
setnp sil
add al, -67 # instrumentation
setz cl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
sub eax, 132782095
test rdi, 20
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], edx
cmovp edx, esi
add cx, bx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
not di
add bl, -58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
