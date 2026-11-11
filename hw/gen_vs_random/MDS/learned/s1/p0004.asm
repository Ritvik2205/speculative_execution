.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 5
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
test al, sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
xor al, dl
xor al, dil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
test cl, bl
or cl, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
