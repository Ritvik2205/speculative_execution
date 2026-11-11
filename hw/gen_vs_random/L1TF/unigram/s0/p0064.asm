.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 94
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 17
xor rdi, -80
or dl, 1 # instrumentation
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edi
movzx cx, bl
add al, dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], di
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
