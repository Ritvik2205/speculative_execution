.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 25
or sil, dil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
btc dx, 67
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
xor al, bl
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
or ecx, ebx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
bt bx, si
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
