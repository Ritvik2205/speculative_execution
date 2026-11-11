.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp dx, si
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdi
movsx edi, cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rax
add dl, -1
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
xor sil, bl
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
not rax
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
sbb bx, cx
add bl, -52 # instrumentation
not edi
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
